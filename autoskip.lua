shouldSkip = false

function skip(_, chapter)
    local count = tonumber(mp.get_property("chapter-list/count"))

    if count <= 1 or not chapter then
      print("Nothing to skip")
      return
    end

    if chapter == 0 then
        -- skip the intro
        mp.command("add chapter 1")
    end

    -- end credits + in the next episode
    local lastSegment = count - 2

    if chapter == lastSegment and lastSegment > 1 then
        -- end of the episode, skip to next episode
        mp.command("playlist_next")
    end
end

function setSkip(value)
  print("plugin setting skip to: ", value)
  if value == true then
    mp.observe_property('chapter', 'native', skip)
  else
    mp.unobserve_property(skip)
  end
end

function bind()
  shouldSkip = not shouldSkip
  setSkip(shouldSkip)
end

mp.add_key_binding('Tab', 'autoskip-key', bind)


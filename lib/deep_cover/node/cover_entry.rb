module DeepCover
  module Node::CoverEntry
    def prefix
      " ($_cov[#{context.nb}][#{nb*2}]+=1;"
    end

    def suffix
      ')'
    end

    def was_called?
      ran_entry?
    end

    def ran_entry?
      entry_runs > 0
    end

    def entry_runs
      @nb ? context.cover.fetch(nb*2) : 0
    end

    def runs
      entry_runs
    end
  end
end

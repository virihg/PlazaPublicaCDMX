# frozen_string_literal: true

module Decidim
  module ParticipatoryProcesses
    module ContentBlocks
      class PastProcessesSettingsFormCell < Decidim::ViewModel
        alias form model

         def content_block
          options[:content_block]
        end

         def label
          I18n.t("decidim.participatory_processes.admin.content_blocks.past_processes.max_results")
        end
      end
    end
  end
end

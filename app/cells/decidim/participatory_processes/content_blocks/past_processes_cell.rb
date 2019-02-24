# frozen_string_literal: true

module Decidim
  module ParticipatoryProcesses
    module ContentBlocks
      class PastProcessesCell < Decidim::ViewModel
        include Decidim::SanitizeHelper

        delegate :current_user, to: :controller

        def show
          if single_process?
            render "single_process"
          elsif past_processes.any?
            render
          end
        end

        def single_process?
          past_processes.to_a.length == 1
        end

        def max_results
          model.settings.max_results
        end

        def past_processes
          @past_processes ||= (
            # OrganizationPublishedParticipatoryProcesses.new(current_organization, current_user) |
            # OrganizationPrioritizedParticipatoryProcesses.new(current_organization, 'past', current_user) |
            FilteredParticipatoryProcesses.new("past")
          ).query.limit(max_results)
        end

        def i18n_scope
          "decidim.participatory_processes.pages.home.past_processes"
        end

        def decidim_participatory_processes
          Decidim::ParticipatoryProcesses::Engine.routes.url_helpers
        end
      end
    end
  end
end

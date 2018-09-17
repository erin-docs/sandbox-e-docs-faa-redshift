# If necessary, uncomment the line below to include explore_source.
include: "e_docs_faa_redshift.model.lkml"

view: add_a_unique_name_1537213633 {
  derived_table: {
    explore_source: accidents {
      column: lots_of_death {}
      column: lots_of_engines {}
      column: event_id {}
      column: engines { field: aircraft_models.engines }
      column: number_of_engines {}
    }
  }
  dimension: lots_of_death {
    label: "Accidents Lots of Death (Yes / No)"
    type: yesno
  }
  dimension: lots_of_engines {
    label: "Accidents Lots of Engines (Yes / No)"
    type: yesno
  }
  dimension: event_id {}
  dimension: engines {
    type: number
  }
  dimension: number_of_engines {
    type: number
  }
}

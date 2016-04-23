types = {
    data: SourceType.create(name: 'Data'),
    paper: SourceType.create(name: 'Paper'),
    website: SourceType.create(name: 'Website'),
}

sources = [
    { name: 'NOAA Marine Debris Program',
      source_type: types[:website],
      description: 'The NOAA Marine Debris Program offers several nationwide, competitive funding opportunities for marine debris projects.',
      url: 'https://marinedebris.noaa.gov/'
    },
]

sources.each { |source| Source.create(source) }

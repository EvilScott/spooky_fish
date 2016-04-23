types = {
    data: SourceType.create(name: 'Data'),
    paper: SourceType.create(name: 'Paper'),
    website: SourceType.create(name: 'Website'),
}

sources = [
    {
        name: 'NOAA Marine Debris Program',
        source_type: types[:website],
        description: 'The NOAA Marine Debris Program offers several nationwide, competitive funding opportunities for marine debris projects.',
        url: 'https://marinedebris.noaa.gov/'
    },
    {
        name: 'NOAA Annual Commercial Landings by Gear Type',
        source_type: types[:data],
        description: 'The NOAA Fisheries, Fisheries Statistics Division has automated data summary programs that anyone can use to rapidly and easily summarize U.S. commercial fisheries landings.',
        url: 'https://www.st.nmfs.noaa.gov/commercial-fisheries/commercial-landings/landings-by-gear/index'
    },
    {
        name: 'Abandoned, lost or otherwise discarded fishing gear',
        source_type: types[:paper],
        description: '2009 UN report on abandoned/lost fishing gear',
        url: 'http://www.unep.org/regionalseas/marinelitter/publications/docs/marine_litter_abandoned_lost_fishing_gear.pdf'
    },
    {
        name: 'Impact of "Ghost Fishing" via Derelict Fishing Gear',
        source_type: types[:paper],
        description: '2015 NOAA report on ghost fishing',
        url: 'https://marinedebris.noaa.gov/sites/default/files/publications-files/Ghostfishing_DFG.pdf'
    },
    {
        name: 'Northwest Straits Derelict Fishing Gear Removal Program',
        source_type: types[:website],
        description: 'Program to clean up derelict gear in WA state',
        url: 'http://www.derelictgear.org/'
    },
    {
        name: 'Expert consultation on the marking of fishing gear',
        source_type: types[:paper],
        description: '2016 FAO draft report on potential marking of fishing gear so it can be recaptured',
        url: 'ftp://ftp.fao.org/FI/DOCUMENT/ec-marking/Inf3.pdf'
    }
]

sources.each { |source| Source.create(source) }

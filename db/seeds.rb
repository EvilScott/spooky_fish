types = {
    data: SourceType.create(name: 'Data'),
    paper: SourceType.create(name: 'Papers'),
    website: SourceType.create(name: 'Websites'),
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
    },
    {
        name: 'Global Ghost Gear Initiative',
        source_type: types[:website],
        description: 'To ensure safer, cleaner oceans by driving economically viable and sustainable solutions to the problem of ghost fishing gear globally',
        url: 'http://www.ghostgear.org/'
    }
]

reasons = [
    {
        reason_type: 'New'
    },
    {
        reason_type: 'Replace Recycled'
    },
    {
        reason_type: 'Replace Disposed'
    },
    {
        reason_type: 'Replace Lost (Stolen)'
    },
    {
        reason_type: 'Replace Lost (Weather)'
    },
    {
        reason_type: 'Replace Lost (Damaged)'
    },
    {
        reason_type: 'Replace Lost (Abandoned)'
    },
    {
        reason_type: 'Replace Lost (Unknown)'
    }
]

regions = [
    {
        region_name: 'Ilwaco'
    },
    {
        region_name: 'Westport-Ocean Shores'
    },
    {
        region_name: 'Willapa Bay'
    },
    {
        region_name: 'Grays Harbor'
    },
    {
        region_name: 'Lapush'
    },
    {
        region_name: 'Neah Bay'
    },
    {
        region_name: 'Sekiu and Pillar Point'
    },
    {
        region_name: 'East Juan de Fuca Strait'
    },
    {
        region_name: 'San Juan Islands'
    },
    {
        region_name: 'Deception Pass, Hope Island, Skagit Bay'
    },
    {
        region_name: 'Ports Susan and Gardner'
    },
    {
        region_name: 'Admiralty Inlet'
    },
    {
        region_name: 'Seattle-Bremerton Area'
    },
    {
        region_name: 'Tacoma-Vashon Island'
    },
    {
        region_name: 'Hood Canal'
    },
    {
        region_name: 'South Puget Sound'
    }
]

action_types = [
    {
        action_name: 'Sold'
    },
    {
        action_name: 'Recycled'
    },
    {
        action_name: 'Found'
    }
]

net_types = [
    {
        net_code: 'WT06',
        mesh_size: 6.2,
        twine_size: 3.0,
        strands: 2,
        net_construction: 'Layered',
        twine_type: 'Twisted',
        twine_material: 'Natural',
        net_use: 'Trawl',
        origin: 'Taiwan',
        color: 'White'
    },
    {
        net_code: 'BL01',
        mesh_size: 3.8,
        twine_size: 2.3,
        strands: 3,
        net_construction: 'Knotted',
        twine_type: 'Twisted',
        twine_material: 'Natural',
        net_use: 'Trawl',
        origin: 'Indonesia',
        color: 'Blue'
    },
    {
      net_code: 'BK03',
      mesh_size: 25.0,
      twine_size: 2.0,
      strands: 2,
      net_construction: 'Knotted',
      twine_type: 'Braided',
      twine_material: 'Natural',
      net_use: 'Gill Net',
      origin: 'Indonesia',
      color: 'Black'
    },
    {
        net_code: 'GR71',
        mesh_size: 350.0,
        twine_size: 4.0,
        strands: 3,
        net_construction: 'Knotted',
        twine_type: 'Twisted',
        twine_material: 'Synthetic',
        net_use: 'Trawl',
        origin: 'Taiwan',
        color: 'Green'
    },
]

sources.each { |source| Source.create(source) }
reasons.each { |reason| Reason.create(reason) }
regions.each { |region| Region.create(region) }
action_types.each{ |action_type| ActionType.create(action_type)}
net_types.each{ |net_type| NetType.create(net_type)}

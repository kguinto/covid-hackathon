
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Avery OBGYN',
      '12 Avery Pl
Westport, CT 06880',
      'Westport',
      'CT',
      '',
      'Yes',
      '41.1440943',
      '-73.3610542'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery OBGYN'
        AND o.latitude = '41.1440943'
        AND o.longitude = '-73.3610542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery OBGYN'
        AND o.latitude = '41.1440943'
        AND o.longitude = '-73.3610542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery OBGYN'
        AND o.latitude = '41.1440943'
        AND o.longitude = '-73.3610542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery OBGYN'
        AND o.latitude = '41.1440943'
        AND o.longitude = '-73.3610542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery OBGYN'
        AND o.latitude = '41.1440943'
        AND o.longitude = '-73.3610542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery OBGYN'
        AND o.latitude = '41.1440943'
        AND o.longitude = '-73.3610542'));

COMMIT;

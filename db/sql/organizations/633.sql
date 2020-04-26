
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
      'PACE of RI',
      '5 Union St
Westerly, RI 02891',
      'Westerly',
      'RI',
      'Doors open M-W-F',
      'Yes',
      '41.3758556',
      '-71.8304032'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PACE of RI'
        AND o.latitude = '41.3758556'
        AND o.longitude = '-71.8304032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PACE of RI'
        AND o.latitude = '41.3758556'
        AND o.longitude = '-71.8304032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'PACE of RI'
        AND o.latitude = '41.3758556'
        AND o.longitude = '-71.8304032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'PACE of RI'
        AND o.latitude = '41.3758556'
        AND o.longitude = '-71.8304032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'PACE of RI'
        AND o.latitude = '41.3758556'
        AND o.longitude = '-71.8304032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'PACE of RI'
        AND o.latitude = '41.3758556'
        AND o.longitude = '-71.8304032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'PACE of RI'
        AND o.latitude = '41.3758556'
        AND o.longitude = '-71.8304032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'PACE of RI'
        AND o.latitude = '41.3758556'
        AND o.longitude = '-71.8304032'));

COMMIT;

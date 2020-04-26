
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
      'North Shore University Hospital',
      '300 Community Dr
Manhasset, NY 11030',
      'Manhasset',
      'NY',
      'Drop off at hospital',
      'Unsure',
      '40.7741973',
      '-73.7006222'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Shore University Hospital'
        AND o.latitude = '40.7741973'
        AND o.longitude = '-73.7006222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Shore University Hospital'
        AND o.latitude = '40.7741973'
        AND o.longitude = '-73.7006222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Shore University Hospital'
        AND o.latitude = '40.7741973'
        AND o.longitude = '-73.7006222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Shore University Hospital'
        AND o.latitude = '40.7741973'
        AND o.longitude = '-73.7006222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('protective plastic scrubs',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Shore University Hospital'
        AND o.latitude = '40.7741973'
        AND o.longitude = '-73.7006222'));

COMMIT;

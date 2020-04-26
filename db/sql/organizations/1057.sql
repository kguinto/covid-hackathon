
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
      'City of Omaha Ne Fire and Police Dept',
      '1523 S 24th St
Omaha, NE 68108',
      'Omaha',
      'NE',
      '',
      'Yes',
      '41.2443236',
      '-95.9460972'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Omaha Ne Fire and Police Dept'
        AND o.latitude = '41.2443236'
        AND o.longitude = '-95.9460972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Omaha Ne Fire and Police Dept'
        AND o.latitude = '41.2443236'
        AND o.longitude = '-95.9460972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Omaha Ne Fire and Police Dept'
        AND o.latitude = '41.2443236'
        AND o.longitude = '-95.9460972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Omaha Ne Fire and Police Dept'
        AND o.latitude = '41.2443236'
        AND o.longitude = '-95.9460972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Omaha Ne Fire and Police Dept'
        AND o.latitude = '41.2443236'
        AND o.longitude = '-95.9460972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Omaha Ne Fire and Police Dept'
        AND o.latitude = '41.2443236'
        AND o.longitude = '-95.9460972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Omaha Ne Fire and Police Dept'
        AND o.latitude = '41.2443236'
        AND o.longitude = '-95.9460972'));

COMMIT;


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
      'St. Rose Hospital',
      '27200 Calaroga Ave
Hayward, CA 94545',
      'Hayward',
      'CA',
      'ER door is the only one open. Please make purchasing department aware, manager: Himanshu Handa, 510-264-4122.',
      'No',
      '37.6334549',
      '-122.0879165'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Rose Hospital'
        AND o.latitude = '37.6334549'
        AND o.longitude = '-122.0879165'));

COMMIT;

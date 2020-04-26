
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
      'New York Proton Cancer Treatment Center',
      '225 E 126th St
New York, NY 10035',
      'New York',
      'NY',
      'In the lobby',
      'Yes',
      '40.8040797',
      '-73.9340747'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Proton Cancer Treatment Center'
        AND o.latitude = '40.8040797'
        AND o.longitude = '-73.9340747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Proton Cancer Treatment Center'
        AND o.latitude = '40.8040797'
        AND o.longitude = '-73.9340747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Proton Cancer Treatment Center'
        AND o.latitude = '40.8040797'
        AND o.longitude = '-73.9340747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Proton Cancer Treatment Center'
        AND o.latitude = '40.8040797'
        AND o.longitude = '-73.9340747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Proton Cancer Treatment Center'
        AND o.latitude = '40.8040797'
        AND o.longitude = '-73.9340747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Proton Cancer Treatment Center'
        AND o.latitude = '40.8040797'
        AND o.longitude = '-73.9340747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Proton Cancer Treatment Center'
        AND o.latitude = '40.8040797'
        AND o.longitude = '-73.9340747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Proton Cancer Treatment Center'
        AND o.latitude = '40.8040797'
        AND o.longitude = '-73.9340747'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Proton Cancer Treatment Center'
        AND o.latitude = '40.8040797'
        AND o.longitude = '-73.9340747'));

COMMIT;


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
      'NYP-Brooklyn Methodist ED',
      '506 6th St
Brooklyn, NY 11215',
      'New York - Brooklyn ',
      'NY',
      'Enter Miner Pavilion call 718-780-3148',
      'Yes',
      '40.6683276',
      '-73.9798349'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYP-Brooklyn Methodist ED'
        AND o.latitude = '40.6683276'
        AND o.longitude = '-73.9798349'));

COMMIT;

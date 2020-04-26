
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
      'Ascension Seton Williamson Medical Center',
      '201 Seton Parkway
Round Rock, TX 78665',
      'Round Rock',
      'TX',
      'Please leave outside the main entrance and tell security to deliver to the ER',
      'Yes',
      '30.5670699',
      '-97.6512507'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension Seton Williamson Medical Center'
        AND o.latitude = '30.5670699'
        AND o.longitude = '-97.6512507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension Seton Williamson Medical Center'
        AND o.latitude = '30.5670699'
        AND o.longitude = '-97.6512507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable Booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension Seton Williamson Medical Center'
        AND o.latitude = '30.5670699'
        AND o.longitude = '-97.6512507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension Seton Williamson Medical Center'
        AND o.latitude = '30.5670699'
        AND o.longitude = '-97.6512507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension Seton Williamson Medical Center'
        AND o.latitude = '30.5670699'
        AND o.longitude = '-97.6512507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension Seton Williamson Medical Center'
        AND o.latitude = '30.5670699'
        AND o.longitude = '-97.6512507'));

COMMIT;

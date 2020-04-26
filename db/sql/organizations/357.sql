
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
      'Coffeyville Regional Medical center',
      '1400 West 4th St
Coffeyville, KS 67337',
      'Coffeyvile',
      'KS',
      'Call 620 252 1506 Mary for entry to hospital',
      'Yes',
      '37.0409324',
      '-95.6393051'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coffeyville Regional Medical center'
        AND o.latitude = '37.0409324'
        AND o.longitude = '-95.6393051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coffeyville Regional Medical center'
        AND o.latitude = '37.0409324'
        AND o.longitude = '-95.6393051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coffeyville Regional Medical center'
        AND o.latitude = '37.0409324'
        AND o.longitude = '-95.6393051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coffeyville Regional Medical center'
        AND o.latitude = '37.0409324'
        AND o.longitude = '-95.6393051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coffeyville Regional Medical center'
        AND o.latitude = '37.0409324'
        AND o.longitude = '-95.6393051'));

COMMIT;

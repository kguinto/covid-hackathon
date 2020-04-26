
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
      'The University of Kansas Health System St Francis Campus',
      '1700 SW 7th Street
Topeka, KS 66606',
      'Topeka',
      'KS',
      'By entrance C, attention Material Management',
      'No',
      '39.0565558',
      '-95.69591'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The University of Kansas Health System St Francis Campus'
        AND o.latitude = '39.0565558'
        AND o.longitude = '-95.69591'));

COMMIT;


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
      'Normandy Park ER',
      '5773 Normandy Blvd
Jacksonville, FL 32205',
      'Jacksonville',
      'FL',
      'mailing address:
Normandy Park ER
ATTN: Emergency Physician
5773 Normandy Blvd.
Jacksonville, FL 32205',
      'Yes',
      '30.3079836',
      '-81.7482352'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Normandy Park ER'
        AND o.latitude = '30.3079836'
        AND o.longitude = '-81.7482352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Normandy Park ER'
        AND o.latitude = '30.3079836'
        AND o.longitude = '-81.7482352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Normandy Park ER'
        AND o.latitude = '30.3079836'
        AND o.longitude = '-81.7482352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Normandy Park ER'
        AND o.latitude = '30.3079836'
        AND o.longitude = '-81.7482352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Normandy Park ER'
        AND o.latitude = '30.3079836'
        AND o.longitude = '-81.7482352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Normandy Park ER'
        AND o.latitude = '30.3079836'
        AND o.longitude = '-81.7482352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Normandy Park ER'
        AND o.latitude = '30.3079836'
        AND o.longitude = '-81.7482352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Normandy Park ER'
        AND o.latitude = '30.3079836'
        AND o.longitude = '-81.7482352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Normandy Park ER'
        AND o.latitude = '30.3079836'
        AND o.longitude = '-81.7482352'));

COMMIT;

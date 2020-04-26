
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
      'Cypress Creek Hospital',
      '17750 Cali Dr
Houston, TX 77090',
      'Houston',
      'TX',
      'Attn: Ben Gonzales',
      'No',
      '30.0243435',
      '-95.4455237'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cypress Creek Hospital'
        AND o.latitude = '30.0243435'
        AND o.longitude = '-95.4455237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cypress Creek Hospital'
        AND o.latitude = '30.0243435'
        AND o.longitude = '-95.4455237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cypress Creek Hospital'
        AND o.latitude = '30.0243435'
        AND o.longitude = '-95.4455237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cypress Creek Hospital'
        AND o.latitude = '30.0243435'
        AND o.longitude = '-95.4455237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cypress Creek Hospital'
        AND o.latitude = '30.0243435'
        AND o.longitude = '-95.4455237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cypress Creek Hospital'
        AND o.latitude = '30.0243435'
        AND o.longitude = '-95.4455237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cypress Creek Hospital'
        AND o.latitude = '30.0243435'
        AND o.longitude = '-95.4455237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cypress Creek Hospital'
        AND o.latitude = '30.0243435'
        AND o.longitude = '-95.4455237'));

COMMIT;

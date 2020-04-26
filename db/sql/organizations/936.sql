
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
      'Catholic Eldercare',
      '909 NE Main St
Minneapolis, MN 55413',
      'Minneapolis',
      'MN',
      'Main Street Lodge, attn: Stephanie',
      'Yes',
      '44.9975183',
      '-93.2654374'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Eldercare'
        AND o.latitude = '44.9975183'
        AND o.longitude = '-93.2654374'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Eldercare'
        AND o.latitude = '44.9975183'
        AND o.longitude = '-93.2654374'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Eldercare'
        AND o.latitude = '44.9975183'
        AND o.longitude = '-93.2654374'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Eldercare'
        AND o.latitude = '44.9975183'
        AND o.longitude = '-93.2654374'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Eldercare'
        AND o.latitude = '44.9975183'
        AND o.longitude = '-93.2654374'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Eldercare'
        AND o.latitude = '44.9975183'
        AND o.longitude = '-93.2654374'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Eldercare'
        AND o.latitude = '44.9975183'
        AND o.longitude = '-93.2654374'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Eldercare'
        AND o.latitude = '44.9975183'
        AND o.longitude = '-93.2654374'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Eldercare'
        AND o.latitude = '44.9975183'
        AND o.longitude = '-93.2654374'));

COMMIT;

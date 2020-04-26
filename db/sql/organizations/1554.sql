
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
      'The Bridge at Westside Garden Plaza',
      '8614 W 10th St
Indianapolis, IN 46234',
      'Indianapolis',
      'IN',
      '"Door 12"  ATTN: Director of Nursing; Hilanie Hauk or Christina White',
      'Yes',
      '39.7788724',
      '-86.3133646'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge at Westside Garden Plaza'
        AND o.latitude = '39.7788724'
        AND o.longitude = '-86.3133646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge at Westside Garden Plaza'
        AND o.latitude = '39.7788724'
        AND o.longitude = '-86.3133646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge at Westside Garden Plaza'
        AND o.latitude = '39.7788724'
        AND o.longitude = '-86.3133646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge at Westside Garden Plaza'
        AND o.latitude = '39.7788724'
        AND o.longitude = '-86.3133646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge at Westside Garden Plaza'
        AND o.latitude = '39.7788724'
        AND o.longitude = '-86.3133646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge at Westside Garden Plaza'
        AND o.latitude = '39.7788724'
        AND o.longitude = '-86.3133646'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge at Westside Garden Plaza'
        AND o.latitude = '39.7788724'
        AND o.longitude = '-86.3133646'));

COMMIT;

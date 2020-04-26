
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
      'Westside Garden Plaza',
      '8616 W 10th St
Indianapolis, IN 46234',
      'Indianapolis ',
      'IN',
      'Please drop off at door 12. ATTN: Christina White, Assisted Living  Director ',
      'Yes',
      '39.7846491',
      '-86.3137916'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Garden Plaza'
        AND o.latitude = '39.7846491'
        AND o.longitude = '-86.3137916'));

COMMIT;

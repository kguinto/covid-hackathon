
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
      'Allergy Partners, PLLC',
      '1372 Westgate Center Dr
Winston-Salem, NC 27103',
      'Winston-Salem',
      'NC',
      'Rear entrance',
      'No',
      '36.0715987',
      '-80.3126809'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy Partners, PLLC'
        AND o.latitude = '36.0715987'
        AND o.longitude = '-80.3126809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy Partners, PLLC'
        AND o.latitude = '36.0715987'
        AND o.longitude = '-80.3126809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy Partners, PLLC'
        AND o.latitude = '36.0715987'
        AND o.longitude = '-80.3126809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy Partners, PLLC'
        AND o.latitude = '36.0715987'
        AND o.longitude = '-80.3126809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy Partners, PLLC'
        AND o.latitude = '36.0715987'
        AND o.longitude = '-80.3126809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy Partners, PLLC'
        AND o.latitude = '36.0715987'
        AND o.longitude = '-80.3126809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy Partners, PLLC'
        AND o.latitude = '36.0715987'
        AND o.longitude = '-80.3126809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy Partners, PLLC'
        AND o.latitude = '36.0715987'
        AND o.longitude = '-80.3126809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy Partners, PLLC'
        AND o.latitude = '36.0715987'
        AND o.longitude = '-80.3126809'));

COMMIT;


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
      'Summit Community Care Clinic ',
      '360 Peak One Dr #100
Breckenridge, CO 80424',
      'Frisco',
      'CO',
      'ATTN:  Margarita Wong.  PO BOX 4337 Frisco, CO 80443 via mail. Or drop off on site.  ',
      'Yes',
      '39.5702044',
      '-106.0760504'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Community Care Clinic '
        AND o.latitude = '39.5702044'
        AND o.longitude = '-106.0760504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Community Care Clinic '
        AND o.latitude = '39.5702044'
        AND o.longitude = '-106.0760504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Community Care Clinic '
        AND o.latitude = '39.5702044'
        AND o.longitude = '-106.0760504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Community Care Clinic '
        AND o.latitude = '39.5702044'
        AND o.longitude = '-106.0760504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Community Care Clinic '
        AND o.latitude = '39.5702044'
        AND o.longitude = '-106.0760504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Community Care Clinic '
        AND o.latitude = '39.5702044'
        AND o.longitude = '-106.0760504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Community Care Clinic '
        AND o.latitude = '39.5702044'
        AND o.longitude = '-106.0760504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Community Care Clinic '
        AND o.latitude = '39.5702044'
        AND o.longitude = '-106.0760504'));

COMMIT;

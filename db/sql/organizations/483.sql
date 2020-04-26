
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
      'Millard Fillmore Suburban Hospital',
      '1540 Maple Rd
Williamsville, NY 14221',
      'Buffalo',
      'NY',
      '',
      '',
      '42.9940125',
      '-78.7301425'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millard Fillmore Suburban Hospital'
        AND o.latitude = '42.9940125'
        AND o.longitude = '-78.7301425'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millard Fillmore Suburban Hospital'
        AND o.latitude = '42.9940125'
        AND o.longitude = '-78.7301425'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millard Fillmore Suburban Hospital'
        AND o.latitude = '42.9940125'
        AND o.longitude = '-78.7301425'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millard Fillmore Suburban Hospital'
        AND o.latitude = '42.9940125'
        AND o.longitude = '-78.7301425'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millard Fillmore Suburban Hospital'
        AND o.latitude = '42.9940125'
        AND o.longitude = '-78.7301425'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millard Fillmore Suburban Hospital'
        AND o.latitude = '42.9940125'
        AND o.longitude = '-78.7301425'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millard Fillmore Suburban Hospital'
        AND o.latitude = '42.9940125'
        AND o.longitude = '-78.7301425'));

COMMIT;

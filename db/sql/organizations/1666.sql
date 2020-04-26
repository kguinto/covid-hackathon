
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
      'Bethesda Lutheran Communities',
      '1025 Olympia Ave NE
Renton, WA 98056',
      'Renton',
      'WA',
      'Porch drop off  mailed to address ATTN Zola Sheehan ',
      'Yes',
      '47.5000364',
      '-122.1730247'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '47.5000364'
        AND o.longitude = '-122.1730247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '47.5000364'
        AND o.longitude = '-122.1730247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '47.5000364'
        AND o.longitude = '-122.1730247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '47.5000364'
        AND o.longitude = '-122.1730247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '47.5000364'
        AND o.longitude = '-122.1730247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '47.5000364'
        AND o.longitude = '-122.1730247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '47.5000364'
        AND o.longitude = '-122.1730247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '47.5000364'
        AND o.longitude = '-122.1730247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '47.5000364'
        AND o.longitude = '-122.1730247'));

COMMIT;

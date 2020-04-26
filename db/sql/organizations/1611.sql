
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
      '5941 Middlefield Rd #100
Littleton, CO 80123',
      'Littleton',
      'CO',
      '5941 Middlefield Rd.
Suite 100
May drop off outside the front door.  Attn: Regional Director',
      'No',
      '39.6084068',
      '-105.0351736'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '39.6084068'
        AND o.longitude = '-105.0351736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '39.6084068'
        AND o.longitude = '-105.0351736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '39.6084068'
        AND o.longitude = '-105.0351736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '39.6084068'
        AND o.longitude = '-105.0351736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '39.6084068'
        AND o.longitude = '-105.0351736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '39.6084068'
        AND o.longitude = '-105.0351736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '39.6084068'
        AND o.longitude = '-105.0351736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '39.6084068'
        AND o.longitude = '-105.0351736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '39.6084068'
        AND o.longitude = '-105.0351736'));

COMMIT;

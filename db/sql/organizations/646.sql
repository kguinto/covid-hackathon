
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
      'Mayo Clinic',
      '2210 Baihly Vista Ln SW
Rochester, MN 55902
',
      'Rochester',
      'MN',
      'Residential. Please leave at mailbox or front door.',
      'Prefer a box of masks; no open box if possible. ',
      '44.0043408',
      '-92.4977879'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayo Clinic'
        AND o.latitude = '44.0043408'
        AND o.longitude = '-92.4977879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayo Clinic'
        AND o.latitude = '44.0043408'
        AND o.longitude = '-92.4977879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayo Clinic'
        AND o.latitude = '44.0043408'
        AND o.longitude = '-92.4977879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayo Clinic'
        AND o.latitude = '44.0043408'
        AND o.longitude = '-92.4977879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayo Clinic'
        AND o.latitude = '44.0043408'
        AND o.longitude = '-92.4977879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayo Clinic'
        AND o.latitude = '44.0043408'
        AND o.longitude = '-92.4977879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayo Clinic'
        AND o.latitude = '44.0043408'
        AND o.longitude = '-92.4977879'));

COMMIT;

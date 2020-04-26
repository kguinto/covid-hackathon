
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
      'Loma Linda University Health - Murrieta',
      '28062 Baxter Rd
Murrieta, CA 92563',
      'Murrieta',
      'CA',
      'ATTN: COVID UNIT ',
      'Yes',
      '33.6145875',
      '-117.1691492'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loma Linda University Health - Murrieta'
        AND o.latitude = '33.6145875'
        AND o.longitude = '-117.1691492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loma Linda University Health - Murrieta'
        AND o.latitude = '33.6145875'
        AND o.longitude = '-117.1691492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loma Linda University Health - Murrieta'
        AND o.latitude = '33.6145875'
        AND o.longitude = '-117.1691492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loma Linda University Health - Murrieta'
        AND o.latitude = '33.6145875'
        AND o.longitude = '-117.1691492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loma Linda University Health - Murrieta'
        AND o.latitude = '33.6145875'
        AND o.longitude = '-117.1691492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loma Linda University Health - Murrieta'
        AND o.latitude = '33.6145875'
        AND o.longitude = '-117.1691492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loma Linda University Health - Murrieta'
        AND o.latitude = '33.6145875'
        AND o.longitude = '-117.1691492'));

COMMIT;

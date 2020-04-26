
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
      'Avery Heights Assisted Living',
      '550 Avery Heights
Hartford, CT 06106',
      'Hartford ',
      'CT',
      'ATTN:  Kerrie Palumbo  drop off at The Heights',
      'Yes',
      '41.7316763',
      '-72.7057133'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Assisted Living'
        AND o.latitude = '41.7316763'
        AND o.longitude = '-72.7057133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Assisted Living'
        AND o.latitude = '41.7316763'
        AND o.longitude = '-72.7057133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Assisted Living'
        AND o.latitude = '41.7316763'
        AND o.longitude = '-72.7057133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Assisted Living'
        AND o.latitude = '41.7316763'
        AND o.longitude = '-72.7057133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Assisted Living'
        AND o.latitude = '41.7316763'
        AND o.longitude = '-72.7057133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Assisted Living'
        AND o.latitude = '41.7316763'
        AND o.longitude = '-72.7057133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Assisted Living'
        AND o.latitude = '41.7316763'
        AND o.longitude = '-72.7057133'));

COMMIT;

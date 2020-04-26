
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
      'Avery Heights Home Health Agency',
      '705 New Britain Ave
Hartford, CT 06106',
      'Hartford',
      'CT',
      '705 New Britain Ave -ATTN: Kerrie Palumbo , bring to Heights Building',
      'Yes',
      '41.7291821',
      '-72.7067751'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Home Health Agency'
        AND o.latitude = '41.7291821'
        AND o.longitude = '-72.7067751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Home Health Agency'
        AND o.latitude = '41.7291821'
        AND o.longitude = '-72.7067751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Home Health Agency'
        AND o.latitude = '41.7291821'
        AND o.longitude = '-72.7067751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Home Health Agency'
        AND o.latitude = '41.7291821'
        AND o.longitude = '-72.7067751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Home Health Agency'
        AND o.latitude = '41.7291821'
        AND o.longitude = '-72.7067751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avery Heights Home Health Agency'
        AND o.latitude = '41.7291821'
        AND o.longitude = '-72.7067751'));

COMMIT;


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
      'Urgent Care 360',
      '300 S Shackleford Rd
Little Rock, AR 72211',
      'Little Rock',
      'AR',
      'Mail or Drop off',
      'Unsure',
      '34.7510596',
      '-92.3948624'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care 360'
        AND o.latitude = '34.7510596'
        AND o.longitude = '-92.3948624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care 360'
        AND o.latitude = '34.7510596'
        AND o.longitude = '-92.3948624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care 360'
        AND o.latitude = '34.7510596'
        AND o.longitude = '-92.3948624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care 360'
        AND o.latitude = '34.7510596'
        AND o.longitude = '-92.3948624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care 360'
        AND o.latitude = '34.7510596'
        AND o.longitude = '-92.3948624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('shoe covers (need sizes medium-large)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care 360'
        AND o.latitude = '34.7510596'
        AND o.longitude = '-92.3948624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('head covers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care 360'
        AND o.latitude = '34.7510596'
        AND o.longitude = '-92.3948624'));

COMMIT;

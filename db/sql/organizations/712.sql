
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
      'Community Options, Inc. ',
      '90 W Chestnut St #225
Washington, PA 15301',
      'Washington',
      'PA',
      '',
      'Yes',
      '40.171876',
      '-80.2473795'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '40.171876'
        AND o.longitude = '-80.2473795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '40.171876'
        AND o.longitude = '-80.2473795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '40.171876'
        AND o.longitude = '-80.2473795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '40.171876'
        AND o.longitude = '-80.2473795'));

COMMIT;

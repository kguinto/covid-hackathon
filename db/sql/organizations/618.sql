
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
      'Emergency One Urgent Care Center',
      '40 Hurley Ave
Kingston, NY 12401',
      'Kingston',
      'NY',
      'Ship to address',
      'Unsure',
      '41.9362328',
      '-74.0273573'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emergency One Urgent Care Center'
        AND o.latitude = '41.9362328'
        AND o.longitude = '-74.0273573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emergency One Urgent Care Center'
        AND o.latitude = '41.9362328'
        AND o.longitude = '-74.0273573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emergency One Urgent Care Center'
        AND o.latitude = '41.9362328'
        AND o.longitude = '-74.0273573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('sanitize',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emergency One Urgent Care Center'
        AND o.latitude = '41.9362328'
        AND o.longitude = '-74.0273573'));

COMMIT;

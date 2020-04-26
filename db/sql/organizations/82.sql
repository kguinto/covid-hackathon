
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
      'Rhode Island Hospital',
      '593 Eddy St
Providence, RI 02903',
      'Providence',
      'RI',
      'Contact- supplychaininfo@lifespan.org',
      '',
      '41.8125272',
      '-71.4076285'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhode Island Hospital'
        AND o.latitude = '41.8125272'
        AND o.longitude = '-71.4076285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhode Island Hospital'
        AND o.latitude = '41.8125272'
        AND o.longitude = '-71.4076285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhode Island Hospital'
        AND o.latitude = '41.8125272'
        AND o.longitude = '-71.4076285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rhode Island Hospital'
        AND o.latitude = '41.8125272'
        AND o.longitude = '-71.4076285'));

COMMIT;

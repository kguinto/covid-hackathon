
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
      'Planned Parenthood of Central and Western NY',
      '114 University Ave
Rochester, NY 14605',
      'Rochester',
      'NY',
      '114 University Avenue',
      'Yes',
      '43.1608693',
      '-77.5994477'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Planned Parenthood of Central and Western NY'
        AND o.latitude = '43.1608693'
        AND o.longitude = '-77.5994477'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Planned Parenthood of Central and Western NY'
        AND o.latitude = '43.1608693'
        AND o.longitude = '-77.5994477'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Planned Parenthood of Central and Western NY'
        AND o.latitude = '43.1608693'
        AND o.longitude = '-77.5994477'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Planned Parenthood of Central and Western NY'
        AND o.latitude = '43.1608693'
        AND o.longitude = '-77.5994477'));

COMMIT;

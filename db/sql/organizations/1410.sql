
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
      'Ben taub General Hospital ',
      '1504 Ben Taub Loop
Houston, TX 77030',
      'Houston',
      'TX',
      '1504 Ben Taub loop
',
      'No',
      '29.7109781',
      '-95.3940865'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ben taub General Hospital '
        AND o.latitude = '29.7109781'
        AND o.longitude = '-95.3940865'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ben taub General Hospital '
        AND o.latitude = '29.7109781'
        AND o.longitude = '-95.3940865'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ben taub General Hospital '
        AND o.latitude = '29.7109781'
        AND o.longitude = '-95.3940865'));

COMMIT;

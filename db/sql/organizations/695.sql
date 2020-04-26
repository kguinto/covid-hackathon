
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
      'OU medical center ',
      '700 NE 13th St
Oklahoma City, OK 73104',
      'Oklahoma City',
      'OK',
      '',
      'No',
      '35.481161',
      '-97.501206'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OU medical center '
        AND o.latitude = '35.481161'
        AND o.longitude = '-97.501206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OU medical center '
        AND o.latitude = '35.481161'
        AND o.longitude = '-97.501206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OU medical center '
        AND o.latitude = '35.481161'
        AND o.longitude = '-97.501206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OU medical center '
        AND o.latitude = '35.481161'
        AND o.longitude = '-97.501206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OU medical center '
        AND o.latitude = '35.481161'
        AND o.longitude = '-97.501206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OU medical center '
        AND o.latitude = '35.481161'
        AND o.longitude = '-97.501206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OU medical center '
        AND o.latitude = '35.481161'
        AND o.longitude = '-97.501206'));

COMMIT;

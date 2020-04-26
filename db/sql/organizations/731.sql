
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
      'Holy Family Memorial ',
      '2300 Western Ave, Manitowoc, WI 54220',
      'Manitowoc ',
      'WI',
      'Call ahead',
      'Yes',
      '44.0949043',
      '-87.6764511'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Memorial '
        AND o.latitude = '44.0949043'
        AND o.longitude = '-87.6764511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Memorial '
        AND o.latitude = '44.0949043'
        AND o.longitude = '-87.6764511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Memorial '
        AND o.latitude = '44.0949043'
        AND o.longitude = '-87.6764511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Memorial '
        AND o.latitude = '44.0949043'
        AND o.longitude = '-87.6764511'));

COMMIT;

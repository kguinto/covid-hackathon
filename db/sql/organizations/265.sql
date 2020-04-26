
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
      'Recovery Works',
      '3107 Cincinnati Rd',
      'Georgetown ',
      'KY',
      'Drop off or mail at the above address or call 972-824/8595',
      'Yes',
      '38.3096932',
      '-84.5608182'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Recovery Works'
        AND o.latitude = '38.3096932'
        AND o.longitude = '-84.5608182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Recovery Works'
        AND o.latitude = '38.3096932'
        AND o.longitude = '-84.5608182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Recovery Works'
        AND o.latitude = '38.3096932'
        AND o.longitude = '-84.5608182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Non alcohol hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Recovery Works'
        AND o.latitude = '38.3096932'
        AND o.longitude = '-84.5608182'));

COMMIT;

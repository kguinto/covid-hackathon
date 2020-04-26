
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
      'St James Parish Hospital',
      '1645 Lutcher Ave
Lutcher, LA 70071',
      'Lutcher',
      'LA',
      '',
      'Yes',
      '30.0517405',
      '-90.7037762'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St James Parish Hospital'
        AND o.latitude = '30.0517405'
        AND o.longitude = '-90.7037762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St James Parish Hospital'
        AND o.latitude = '30.0517405'
        AND o.longitude = '-90.7037762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St James Parish Hospital'
        AND o.latitude = '30.0517405'
        AND o.longitude = '-90.7037762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St James Parish Hospital'
        AND o.latitude = '30.0517405'
        AND o.longitude = '-90.7037762'));

COMMIT;

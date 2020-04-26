
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
      'Larkin Community Hospital, Larkin Community Hospital Palm Springs Campus ',
      '1475 W 49th Pl
Hialeah, FL 33012',
      'Hialeah',
      'FL',
      'Hospital entrance, call for Dr Pedram Rad ',
      'Yes',
      '25.8690179',
      '-80.3128235'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital, Larkin Community Hospital Palm Springs Campus '
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital, Larkin Community Hospital Palm Springs Campus '
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital, Larkin Community Hospital Palm Springs Campus '
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital, Larkin Community Hospital Palm Springs Campus '
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

COMMIT;

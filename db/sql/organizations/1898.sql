
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
      'Vanderbilt University Medical Center',
      '719 Thompson Ln
Nashville, TN 37204',
      'Nashville',
      'TN',
      'https://www.vumc.org/coronavirus/sites/default/files/COVID%20Documents/OHO%20map%20and%20directions%20English.pdf',
      '',
      '36.1097425',
      '-86.765348'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1097425'
        AND o.longitude = '-86.765348'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1097425'
        AND o.longitude = '-86.765348'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1097425'
        AND o.longitude = '-86.765348'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1097425'
        AND o.longitude = '-86.765348'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1097425'
        AND o.longitude = '-86.765348'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1097425'
        AND o.longitude = '-86.765348'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1097425'
        AND o.longitude = '-86.765348'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1097425'
        AND o.longitude = '-86.765348'));

COMMIT;

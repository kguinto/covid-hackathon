
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
      'Sacred Peaks Health Center',
      '6300 N, US-89
Flagstaff, AZ 86004',
      'Flagstaff ',
      'AZ',
      'Drop off with triage desk for Dr. Anne',
      'Yes but must be unused',
      '35.238197',
      '-111.571285'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacred Peaks Health Center'
        AND o.latitude = '35.238197'
        AND o.longitude = '-111.571285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacred Peaks Health Center'
        AND o.latitude = '35.238197'
        AND o.longitude = '-111.571285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacred Peaks Health Center'
        AND o.latitude = '35.238197'
        AND o.longitude = '-111.571285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacred Peaks Health Center'
        AND o.latitude = '35.238197'
        AND o.longitude = '-111.571285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacred Peaks Health Center'
        AND o.latitude = '35.238197'
        AND o.longitude = '-111.571285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacred Peaks Health Center'
        AND o.latitude = '35.238197'
        AND o.longitude = '-111.571285'));

COMMIT;

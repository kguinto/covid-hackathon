
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
      'Kaiser Permanente - Fremont',
      '39401 Civic Center Dr
Fremont, CA 94538',
      'Fremont',
      'CA',
      'Second floor OR',
      'No',
      '37.553735',
      '-121.9752641'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont'
        AND o.latitude = '37.553735'
        AND o.longitude = '-121.9752641'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont'
        AND o.latitude = '37.553735'
        AND o.longitude = '-121.9752641'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont'
        AND o.latitude = '37.553735'
        AND o.longitude = '-121.9752641'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont'
        AND o.latitude = '37.553735'
        AND o.longitude = '-121.9752641'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Fremont'
        AND o.latitude = '37.553735'
        AND o.longitude = '-121.9752641'));

COMMIT;

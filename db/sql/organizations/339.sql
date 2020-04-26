
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
      'Kaiser Permanente - Baldwin Park',
      '1011 Baldwin Park Blvd
Baldwin Park, CA 91706',
      'Baldwin Park',
      'CA',
      'Drop off to intake nurse or security staff in the Emergency Department parking lot',
      'Yes',
      '34.0655652',
      '-117.9859943'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Baldwin Park'
        AND o.latitude = '34.0655652'
        AND o.longitude = '-117.9859943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Baldwin Park'
        AND o.latitude = '34.0655652'
        AND o.longitude = '-117.9859943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Baldwin Park'
        AND o.latitude = '34.0655652'
        AND o.longitude = '-117.9859943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Baldwin Park'
        AND o.latitude = '34.0655652'
        AND o.longitude = '-117.9859943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Baldwin Park'
        AND o.latitude = '34.0655652'
        AND o.longitude = '-117.9859943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Baldwin Park'
        AND o.latitude = '34.0655652'
        AND o.longitude = '-117.9859943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Baldwin Park'
        AND o.latitude = '34.0655652'
        AND o.longitude = '-117.9859943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Baldwin Park'
        AND o.latitude = '34.0655652'
        AND o.longitude = '-117.9859943'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Baldwin Park'
        AND o.latitude = '34.0655652'
        AND o.longitude = '-117.9859943'));

COMMIT;

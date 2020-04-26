
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
      'AppleCare Immediate Care, LLC',
      '1481 Highway 40 East
Kingsland, GA 31548',
      'Kingsland',
      'GA',
      'Mail',
      'unsure',
      '30.7864509',
      '-81.6432139'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care, LLC'
        AND o.latitude = '30.7864509'
        AND o.longitude = '-81.6432139'));

COMMIT;

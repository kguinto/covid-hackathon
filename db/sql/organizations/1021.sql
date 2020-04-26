
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
      'Quest Diagnostics ',
      '14225 Newbrook Dr
Chantilly, VA 20151',
      'Chantilly ',
      'VA',
      'Front desk, attention to virology',
      'No',
      '38.8762091',
      '-77.4391808'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Quest Diagnostics '
        AND o.latitude = '38.8762091'
        AND o.longitude = '-77.4391808'));

COMMIT;

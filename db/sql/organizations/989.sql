
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
      'FDNY Academy',
      'EMS Academy, Bldg. 325
Fort Totten
Bayside, NY 11359',
      'New York - Queens',
      'NY',
      'Drop off in building. Notify Security booth.',
      'Yes',
      '40.7915557',
      '-73.7743762'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'FDNY Academy'
        AND o.latitude = '40.7915557'
        AND o.longitude = '-73.7743762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'FDNY Academy'
        AND o.latitude = '40.7915557'
        AND o.longitude = '-73.7743762'));

COMMIT;

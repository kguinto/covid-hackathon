
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
      'York Hospital',
      '15 Hospital Dr
York, ME 03909',
      'York ',
      'ME',
      'Curbside ',
      'Yes',
      '43.142537',
      '-70.6522577'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'York Hospital'
        AND o.latitude = '43.142537'
        AND o.longitude = '-70.6522577'));

COMMIT;

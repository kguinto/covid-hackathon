
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
      'Pulmonary Associates PA',
      '5750 W Thunderbird Rd Bldg E Ste 500
Glendale, AZ 85306',
      'Glendale',
      'AZ',
      'None',
      'Yes',
      '33.6122706',
      '-112.1820963'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pulmonary Associates PA'
        AND o.latitude = '33.6122706'
        AND o.longitude = '-112.1820963'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pulmonary Associates PA'
        AND o.latitude = '33.6122706'
        AND o.longitude = '-112.1820963'));

COMMIT;


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
      'Abington-Jefferson Hospital ',
      '1235 Old York Rd
Abington, PA 19001',
      'Abington ',
      'PA',
      'Beginning Wednesday, March 25, donations for Abington – Jefferson Health can be brought to a drop-off location at Levy Medical Plaza. Donations will be accepted Monday to Friday from 9 a.m. to 4 p.m. All products should be in their original packaging -- unopened and unexpired. These products will be reviewed before distribution by Supply Chain staff. https://www.jeffersonhealth.org/coronavirus-covid-19/medical-supply-donation.html',
      'No',
      '40.1184339',
      '-75.1188592'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington-Jefferson Hospital '
        AND o.latitude = '40.1184339'
        AND o.longitude = '-75.1188592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington-Jefferson Hospital '
        AND o.latitude = '40.1184339'
        AND o.longitude = '-75.1188592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington-Jefferson Hospital '
        AND o.latitude = '40.1184339'
        AND o.longitude = '-75.1188592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington-Jefferson Hospital '
        AND o.latitude = '40.1184339'
        AND o.longitude = '-75.1188592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington-Jefferson Hospital '
        AND o.latitude = '40.1184339'
        AND o.longitude = '-75.1188592'));

COMMIT;

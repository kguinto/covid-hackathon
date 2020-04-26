
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
      'Amed Family Clinic',
      '​4536 Nolensville Pike, Suite F
Nashville, TN 37211',
      'Nashville',
      'TN',
      'Drop off, mail, call us directly at 615-454-6986 or email info@amedfamilyclinic.com',
      'Yes',
      '36.0708766',
      '-86.7220285'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amed Family Clinic'
        AND o.latitude = '36.0708766'
        AND o.longitude = '-86.7220285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amed Family Clinic'
        AND o.latitude = '36.0708766'
        AND o.longitude = '-86.7220285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amed Family Clinic'
        AND o.latitude = '36.0708766'
        AND o.longitude = '-86.7220285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amed Family Clinic'
        AND o.latitude = '36.0708766'
        AND o.longitude = '-86.7220285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amed Family Clinic'
        AND o.latitude = '36.0708766'
        AND o.longitude = '-86.7220285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amed Family Clinic'
        AND o.latitude = '36.0708766'
        AND o.longitude = '-86.7220285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amed Family Clinic'
        AND o.latitude = '36.0708766'
        AND o.longitude = '-86.7220285'));

COMMIT;

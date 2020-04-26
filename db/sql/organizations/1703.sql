
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
      'Fresno Community Regional Medical Centers ',
      '215 N Fresno St
Fresno, CA 93701',
      'Fresno ',
      'CA',
      'North Medical Plaza CRMC',
      'No',
      '36.7453419',
      '-119.7820079'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresno Community Regional Medical Centers '
        AND o.latitude = '36.7453419'
        AND o.longitude = '-119.7820079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresno Community Regional Medical Centers '
        AND o.latitude = '36.7453419'
        AND o.longitude = '-119.7820079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresno Community Regional Medical Centers '
        AND o.latitude = '36.7453419'
        AND o.longitude = '-119.7820079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresno Community Regional Medical Centers '
        AND o.latitude = '36.7453419'
        AND o.longitude = '-119.7820079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresno Community Regional Medical Centers '
        AND o.latitude = '36.7453419'
        AND o.longitude = '-119.7820079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresno Community Regional Medical Centers '
        AND o.latitude = '36.7453419'
        AND o.longitude = '-119.7820079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresno Community Regional Medical Centers '
        AND o.latitude = '36.7453419'
        AND o.longitude = '-119.7820079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresno Community Regional Medical Centers '
        AND o.latitude = '36.7453419'
        AND o.longitude = '-119.7820079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresno Community Regional Medical Centers '
        AND o.latitude = '36.7453419'
        AND o.longitude = '-119.7820079'));

COMMIT;

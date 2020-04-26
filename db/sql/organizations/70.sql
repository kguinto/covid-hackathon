
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
      'Jacobs Medical Center at UC San Diego Health',
      '9300 Campus Point Dr
La Jolla, CA 92037',
      'La Jolla',
      'CA',
      'Contact Robbie Jacobs at gjacob@ucsd.edu',
      'Unknown',
      '32.8778851',
      '-117.2255213'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobs Medical Center at UC San Diego Health'
        AND o.latitude = '32.8778851'
        AND o.longitude = '-117.2255213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobs Medical Center at UC San Diego Health'
        AND o.latitude = '32.8778851'
        AND o.longitude = '-117.2255213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobs Medical Center at UC San Diego Health'
        AND o.latitude = '32.8778851'
        AND o.longitude = '-117.2255213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobs Medical Center at UC San Diego Health'
        AND o.latitude = '32.8778851'
        AND o.longitude = '-117.2255213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobs Medical Center at UC San Diego Health'
        AND o.latitude = '32.8778851'
        AND o.longitude = '-117.2255213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobs Medical Center at UC San Diego Health'
        AND o.latitude = '32.8778851'
        AND o.longitude = '-117.2255213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobs Medical Center at UC San Diego Health'
        AND o.latitude = '32.8778851'
        AND o.longitude = '-117.2255213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobs Medical Center at UC San Diego Health'
        AND o.latitude = '32.8778851'
        AND o.longitude = '-117.2255213'));

COMMIT;

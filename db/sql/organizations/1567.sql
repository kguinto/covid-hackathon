
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
      'Pasadena rehab institute ',
      '1017 S Fair Oaks Ave
Pasadena, CA 91105',
      'Pasadena ',
      'CA',
      'Attn:  Dr Eric Lai',
      'Yes',
      '34.1281784',
      '-118.1505768'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pasadena rehab institute '
        AND o.latitude = '34.1281784'
        AND o.longitude = '-118.1505768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pasadena rehab institute '
        AND o.latitude = '34.1281784'
        AND o.longitude = '-118.1505768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pasadena rehab institute '
        AND o.latitude = '34.1281784'
        AND o.longitude = '-118.1505768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pasadena rehab institute '
        AND o.latitude = '34.1281784'
        AND o.longitude = '-118.1505768'));

COMMIT;

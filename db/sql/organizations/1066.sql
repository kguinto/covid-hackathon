
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
      'THE BEECHWOOD HOME',
      '2140 Pogue Ave
Cincinnati, OH 45208',
      'CINCINNATI',
      'OH',
      'We would graciously accept donations by mail or drop-off (rear entrance between doors).  Please call 513-702-8301 if you have any questions. ',
      'Yes',
      '39.1361029',
      '-84.4598441'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'THE BEECHWOOD HOME'
        AND o.latitude = '39.1361029'
        AND o.longitude = '-84.4598441'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'THE BEECHWOOD HOME'
        AND o.latitude = '39.1361029'
        AND o.longitude = '-84.4598441'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'THE BEECHWOOD HOME'
        AND o.latitude = '39.1361029'
        AND o.longitude = '-84.4598441'));

COMMIT;

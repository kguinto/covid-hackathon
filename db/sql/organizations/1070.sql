
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
      'Gonzales Healthcare Systems',
      '1110 N Sarah Dewitt Dr
Gonzales, TX 78629',
      'Gonzales',
      'TX',
      'Loading dock in back.  ATTN: Steven Ackermann',
      'Yes',
      '29.5171506',
      '-97.4316356'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gonzales Healthcare Systems'
        AND o.latitude = '29.5171506'
        AND o.longitude = '-97.4316356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gonzales Healthcare Systems'
        AND o.latitude = '29.5171506'
        AND o.longitude = '-97.4316356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gonzales Healthcare Systems'
        AND o.latitude = '29.5171506'
        AND o.longitude = '-97.4316356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gonzales Healthcare Systems'
        AND o.latitude = '29.5171506'
        AND o.longitude = '-97.4316356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gonzales Healthcare Systems'
        AND o.latitude = '29.5171506'
        AND o.longitude = '-97.4316356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gonzales Healthcare Systems'
        AND o.latitude = '29.5171506'
        AND o.longitude = '-97.4316356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gonzales Healthcare Systems'
        AND o.latitude = '29.5171506'
        AND o.longitude = '-97.4316356'));

COMMIT;

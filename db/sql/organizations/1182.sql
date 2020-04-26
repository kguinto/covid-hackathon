
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
      'Bethel Lutheran Home ',
      '1001 Egan Ave S
Madison, SD 57042',
      'Madison',
      'SD',
      '1001 S Egan Ave',
      'No',
      '43.9949073',
      '-97.1149063'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Lutheran Home '
        AND o.latitude = '43.9949073'
        AND o.longitude = '-97.1149063'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Lutheran Home '
        AND o.latitude = '43.9949073'
        AND o.longitude = '-97.1149063'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Lutheran Home '
        AND o.latitude = '43.9949073'
        AND o.longitude = '-97.1149063'));

COMMIT;
